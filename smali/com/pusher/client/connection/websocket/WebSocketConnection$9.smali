.class Lcom/pusher/client/connection/websocket/WebSocketConnection$9;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

.field final synthetic val$ex:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/Exception;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iput-object p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;->val$ex:Ljava/lang/Exception;

    const-string v2, "An exception was thrown by the websocket"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
