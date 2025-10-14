from agno.agent import Agent
from agno.db.sqlite import SqliteDb
from agno.models.gemini import Gemini
from agno.os import AgentOS
from agno.tools.mcp import MCPTools

agno_agent = Agent(
    name="Agno Agent com Gemini",
    model=Gemini(id="gemini-pro"),
    db=SqliteDb(db_file="agno.db"),
    tools=[MCPTools(transport="streamable-http", url="https://docs.agno.com/mcp")],
    add_history_to_context=True,
    markdown=True,
)

agent_os = AgentOS(agents=[agno_agent])
app = agent_os.get_app()
