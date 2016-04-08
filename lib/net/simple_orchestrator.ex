defmodule McEx.Net.SimpleOrchestrator do

  use McProtocol.Acceptor.Orchestrator
  use GenServer

  def init(connection_pid) do
    {:ok, %{connection: connection_pid}}
  end

  def handle_call({:next, :connect}, _from, state) do
    {:reply, {McProtocol.Handler.Handshake, %{}}, state}
  end
  def handle_call({:next, {McProtocol.Handler.Handshake, :Status}}, _from, state) do
    {:reply, {McProtocol.Handler.Status, %{}}, state}
  end
  def handle_call({:next, {McProtocol.Handler.Handshake, :Login}}, _from, state) do
    {:reply, {McProtocol.Handler.Login, %{}}, state}
  end
  def handle_call({:next, {McProtocol.Handler.Login, _}}, _from, state) do
    {:reply, {McEx.Net.Handler, %{}}, state}
  end

end
