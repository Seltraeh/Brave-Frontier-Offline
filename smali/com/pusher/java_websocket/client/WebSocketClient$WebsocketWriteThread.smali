.class Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebsocketWriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/java_websocket/client/WebSocketClient;


# direct methods
.method private constructor <init>(Lcom/pusher/java_websocket/client/WebSocketClient;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/pusher/java_websocket/client/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pusher/java_websocket/client/WebSocketClient;Lcom/pusher/java_websocket/client/WebSocketClient$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lcom/pusher/java_websocket/client/WebSocketClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 347
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 349
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/pusher/java_websocket/client/WebSocketClient;

    invoke-static {v0}, Lcom/pusher/java_websocket/client/WebSocketClient;->access$100(Lcom/pusher/java_websocket/client/WebSocketClient;)Lcom/pusher/java_websocket/WebSocketImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/pusher/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 351
    iget-object v1, p0, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/pusher/java_websocket/client/WebSocketClient;

    invoke-static {v1}, Lcom/pusher/java_websocket/client/WebSocketClient;->access$200(Lcom/pusher/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 352
    iget-object v0, p0, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/pusher/java_websocket/client/WebSocketClient;

    invoke-static {v0}, Lcom/pusher/java_websocket/client/WebSocketClient;->access$200(Lcom/pusher/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    :catch_0
    iget-object v0, p0, Lcom/pusher/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/pusher/java_websocket/client/WebSocketClient;

    invoke-static {v0}, Lcom/pusher/java_websocket/client/WebSocketClient;->access$100(Lcom/pusher/java_websocket/client/WebSocketClient;)Lcom/pusher/java_websocket/WebSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/java_websocket/WebSocketImpl;->eot()V

    :catch_1
    :cond_0
    return-void
.end method
