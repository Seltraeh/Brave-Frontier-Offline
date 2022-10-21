.class Lsg/gumi/bravefrontier/BraveFrontier$2;
.super Ljava/lang/Object;
.source "BraveFrontier.java"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontier;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$2;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 2

    const/4 v0, 0x0

    .line 236
    sput-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    const-string v0, "TAPJOY_DEBUG"

    const-string v1, "onConnectFailure"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    const-string v0, "TAPJOY_DEBUG"

    const-string v1, "onConnectSuccess"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 230
    sput-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    return-void
.end method
