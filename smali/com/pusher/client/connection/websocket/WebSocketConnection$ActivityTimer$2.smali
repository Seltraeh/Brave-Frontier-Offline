.class Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->schedulePongCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 387
    invoke-static {}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$800()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Timed out awaiting pong from server - disconnecting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    iget-object v0, v0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$300(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->removeWebSocketListener()V

    .line 391
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    iget-object v0, v0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->disconnect()V

    .line 396
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    iget-object v0, v0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    const/4 v1, -0x1

    const-string v2, "Pong timeout"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->onClose(ILjava/lang/String;Z)V

    return-void
.end method
