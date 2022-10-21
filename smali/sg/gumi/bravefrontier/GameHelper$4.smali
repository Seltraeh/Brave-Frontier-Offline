.class Lsg/gumi/bravefrontier/GameHelper$4;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/GameHelper;->onSignInFailedTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/GameHelper;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper$4;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1057
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->onGPGSSignInFailed()V

    :cond_0
    return-void
.end method
