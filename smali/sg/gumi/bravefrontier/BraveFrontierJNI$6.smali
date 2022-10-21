.class Lsg/gumi/bravefrontier/BraveFrontierJNI$6;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI;->playVideoWithOption(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_fileName:Ljava/lang/String;

.field final synthetic val$_toClose:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 512
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;->val$_fileName:Ljava/lang/String;

    iput-boolean p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;->val$_toClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 515
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-static {v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object v0

    iget-object v1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;->val$_fileName:Ljava/lang/String;

    iget-boolean v2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;->val$_toClose:Z

    invoke-virtual {v0, v1, v2}, Lsg/gumi/bravefrontier/video/BFVideoView;->playVideo(Ljava/lang/String;Z)V

    return-void
.end method
