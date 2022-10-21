.class Lsg/gumi/bravefrontier/BraveFrontierPusher$1$1;
.super Ljava/lang/Object;
.source "BraveFrontierPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierPusher$1;->onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontierPusher$1;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontierPusher$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierPusher$1$1;->this$0:Lsg/gumi/bravefrontier/BraveFrontierPusher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierPusher;->access$000()Lcom/pusher/client/Pusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->connect()V

    return-void
.end method
