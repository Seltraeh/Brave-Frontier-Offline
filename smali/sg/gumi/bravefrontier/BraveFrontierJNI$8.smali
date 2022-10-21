.class Lsg/gumi/bravefrontier/BraveFrontierJNI$8;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI;->playYoutubeVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_videoId:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;->val$_videoId:Ljava/lang/String;

    iput-object p2, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 789
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;->val$_videoId:Ljava/lang/String;

    sput-object v0, Lsg/gumi/bravefrontier/YoutubeActivity;->VIDEO_ID:Ljava/lang/String;

    .line 790
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;->val$mContext:Landroid/content/Context;

    const-class v2, Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
