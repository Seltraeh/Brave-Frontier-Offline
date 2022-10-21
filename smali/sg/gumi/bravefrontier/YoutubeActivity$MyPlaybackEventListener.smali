.class final Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;
.super Ljava/lang/Object;
.source "YoutubeActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/YoutubeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPlaybackEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/YoutubeActivity;


# direct methods
.method private constructor <init>(Lsg/gumi/bravefrontier/YoutubeActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsg/gumi/bravefrontier/YoutubeActivity;Lsg/gumi/bravefrontier/YoutubeActivity$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;-><init>(Lsg/gumi/bravefrontier/YoutubeActivity;)V

    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "(BUFFERING)"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 94
    :goto_0
    invoke-static {p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Youtube"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPaused()V
    .locals 2

    const-string v0, "PAUSED"

    .line 106
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 112
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$300(Lsg/gumi/bravefrontier/YoutubeActivity;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 113
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$302(Lsg/gumi/bravefrontier/YoutubeActivity;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;

    .line 114
    iget-object v0, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPlaying()V
    .locals 2

    const-string v0, "PLAYING"

    .line 88
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekTo(I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    .line 121
    invoke-static {v1, p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$400(Lsg/gumi/bravefrontier/YoutubeActivity;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;->this$0:Lsg/gumi/bravefrontier/YoutubeActivity;

    .line 122
    invoke-static {p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$300(Lsg/gumi/bravefrontier/YoutubeActivity;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v1

    invoke-static {p1, v1}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$400(Lsg/gumi/bravefrontier/YoutubeActivity;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "\tSEEKTO: (%s/%s)"

    .line 120
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "YoutubeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "STOPPED"

    .line 100
    invoke-static {v0}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-static {}, Lsg/gumi/bravefrontier/YoutubeActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Youtube"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
