.class Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->activity()V
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

    .line 353
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    invoke-static {}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$800()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sending ping"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    iget-object v0, v0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    const-string v1, "{\"event\": \"pusher:ping\"}"

    invoke-virtual {v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->access$900(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V

    return-void
.end method
