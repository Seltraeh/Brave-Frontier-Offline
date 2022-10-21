.class final Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;
.super Ljava/lang/Object;
.source "YoutubeActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/YoutubeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPlayerStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/YoutubeActivity;


# direct methods
.method private constructor <init>(Lsg/gumi/bravefrontier/YoutubeActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsg/gumi/bravefrontier/YoutubeActivity;Lsg/gumi/bravefrontier/YoutubeActivity$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;-><init>(Lsg/gumi/bravefrontier/YoutubeActivity;)V

    return-void
.end method


# virtual methods
.method public onAdStarted()V
    .locals 2

    const-string v0, "AD_STARTED"

    .line 142
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 167
    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-static {p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$300(Lsg/gumi/bravefrontier/YoutubeActivity;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 168
    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$302(Lsg/gumi/bravefrontier/YoutubeActivity;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;

    .line 169
    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 170
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Youtube"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LOADED %s"

    .line 136
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Youtube"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoading()V
    .locals 2

    const-string v0, "LOADING"

    .line 130
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoEnded()V
    .locals 2

    const-string v0, "VIDEO_ENDED"

    .line 154
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoFinishedCallback()V

    .line 158
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$300(Lsg/gumi/bravefrontier/YoutubeActivity;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 159
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$302(Lsg/gumi/bravefrontier/YoutubeActivity;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;

    .line 160
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onVideoStarted()V
    .locals 2

    const-string v0, "VIDEO_STARTED"

    .line 148
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
