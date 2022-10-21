.class public Lsg/gumi/bravefrontier/YoutubeActivity;
.super Lsg/gumi/bravefrontier/YouTubeFailureRecoveryActivity;
.source "YoutubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;,
        Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;
    }
.end annotation


# static fields
.field public static VIDEO_ID:Ljava/lang/String; = ""

.field private static playbackState:Ljava/lang/String; = ""

.field private static playerState:Ljava/lang/String; = ""


# instance fields
.field private playbackEventListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;

.field private player:Lcom/google/android/youtube/player/YouTubePlayer;

.field private playerStateChangeListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lsg/gumi/bravefrontier/YouTubeFailureRecoveryActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lsg/gumi/bravefrontier/YoutubeActivity;->playbackState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    sput-object p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playbackState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lsg/gumi/bravefrontier/YoutubeActivity;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object p0
.end method

.method static synthetic access$302(Lsg/gumi/bravefrontier/YoutubeActivity;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 0

    .line 36
    iput-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object p1
.end method

.method static synthetic access$400(Lsg/gumi/bravefrontier/YoutubeActivity;I)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/YoutubeActivity;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lsg/gumi/bravefrontier/YoutubeActivity;->playerState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    sput-object p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playerState:Ljava/lang/String;

    return-object p0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 4

    .line 76
    div-int/lit16 p1, p1, 0x3e8

    .line 77
    div-int/lit8 v0, p1, 0x3c

    .line 78
    div-int/lit8 v1, v0, 0x3c

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    rem-int/lit8 v0, v0, 0x3c

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 1

    const v0, 0x7f0700e0

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0039

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0700e0

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    const-string v0, "AIzaSyBpm9ijwTe3-T-4UsW2Z4XsuouGusEDPIE"

    .line 51
    invoke-virtual {p1, v0, p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 53
    new-instance p1, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;-><init>(Lsg/gumi/bravefrontier/YoutubeActivity;Lsg/gumi/bravefrontier/YoutubeActivity$1;)V

    iput-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playerStateChangeListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;

    .line 54
    new-instance p1, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;

    invoke-direct {p1, p0, v0}, Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;-><init>(Lsg/gumi/bravefrontier/YoutubeActivity;Lsg/gumi/bravefrontier/YoutubeActivity$1;)V

    iput-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playbackEventListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0

    .line 60
    iput-object p2, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 61
    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playerStateChangeListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlayerStateChangeListener;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    .line 62
    iget-object p1, p0, Lsg/gumi/bravefrontier/YoutubeActivity;->playbackEventListener:Lsg/gumi/bravefrontier/YoutubeActivity$MyPlaybackEventListener;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlaybackEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V

    .line 63
    sget-object p1, Lsg/gumi/bravefrontier/YoutubeActivity;->VIDEO_ID:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 64
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    const/4 p1, 0x0

    .line 65
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setShowFullscreenButton(Z)V

    .line 66
    sget-object p1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->MINIMAL:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V

    return-void
.end method
