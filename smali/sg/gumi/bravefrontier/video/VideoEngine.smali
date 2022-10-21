.class public Lsg/gumi/bravefrontier/video/VideoEngine;
.super Ljava/lang/Object;
.source "VideoEngine.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEngine"


# instance fields
.field mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field mCallerClass:Lsg/gumi/bravefrontier/BraveFrontier;

.field mFileName:Ljava/lang/String;

.field private mForceHeight:I

.field private mForceWidth:I

.field mIsCloseOnTouch:Z

.field mIsPaused:Z

.field mIsPreActivityFinished:Z

.field mIsPrepared:Z

.field mIsVideoPlaying:Z

.field mLastPosition:I

.field mNextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Ljava/lang/Class;ZLsg/gumi/bravefrontier/video/BFVideoView;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2dx/lib/Cocos2dxActivity;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lsg/gumi/bravefrontier/video/BFVideoView;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mNextClass:Ljava/lang/Class;

    .line 27
    iput-object v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mCallerClass:Lsg/gumi/bravefrontier/BraveFrontier;

    .line 28
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPreActivityFinished:Z

    .line 29
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mLastPosition:I

    .line 30
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    .line 31
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsVideoPlaying:Z

    .line 32
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsCloseOnTouch:Z

    .line 33
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    .line 34
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 40
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 41
    iput-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mNextClass:Ljava/lang/Class;

    .line 42
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPreActivityFinished:Z

    .line 43
    iput-object p4, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 44
    invoke-virtual {p4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 45
    iget-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 46
    iget-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    iput-object p5, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mFileName:Ljava/lang/String;

    const-string p2, "audio"

    .line 48
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 49
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p3

    .line 50
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 51
    iput p6, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 52
    iput p7, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Lsg/gumi/bravefrontier/video/BFVideoView;Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 25
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mNextClass:Ljava/lang/Class;

    .line 27
    iput-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mCallerClass:Lsg/gumi/bravefrontier/BraveFrontier;

    .line 28
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPreActivityFinished:Z

    .line 29
    iput p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mLastPosition:I

    .line 30
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    .line 31
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsVideoPlaying:Z

    .line 32
    iput-boolean p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsCloseOnTouch:Z

    .line 33
    iput p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    .line 34
    iput p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 58
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 59
    iput-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 60
    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 61
    iget-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 62
    iget-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iput-object p4, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mFileName:Ljava/lang/String;

    const-string p2, "audio"

    .line 64
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 65
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p4

    .line 66
    invoke-virtual {p1, p2, p4, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 67
    iput p5, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 68
    iput p6, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Lsg/gumi/bravefrontier/video/BFVideoView;Ljava/lang/String;II)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mNextClass:Ljava/lang/Class;

    .line 27
    iput-object v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mCallerClass:Lsg/gumi/bravefrontier/BraveFrontier;

    .line 28
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPreActivityFinished:Z

    .line 29
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mLastPosition:I

    .line 30
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    .line 31
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsVideoPlaying:Z

    .line 32
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsCloseOnTouch:Z

    .line 33
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    .line 34
    iput v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 74
    iput-object p2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 75
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 76
    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 78
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iput-object p3, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mFileName:Ljava/lang/String;

    .line 80
    iput p4, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    .line 81
    iput p5, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    return-void
.end method


# virtual methods
.method public getPausedStatus()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {p1}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->finishVideo(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VideoEngine"

    const-string v1, "On Destroy called"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 151
    iput-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 152
    iput-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mNextClass:Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "onLowMemory"

    const-string v1, "lowMemory at VideoEngine"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 113
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "Video Engine"

    const-string v1, "PREPARED"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->onPrepared()V

    .line 176
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsVideoPlaying:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 125
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 158
    iget-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsCloseOnTouch:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsVideoPlaying:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Video Engine"

    const-string v1, "TOUCHED"

    .line 162
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 166
    :cond_1
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {p1}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsg/gumi/bravefrontier/video/BFVideoView;->finishVideo(Z)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    return p2
.end method

.method public setPausedStatus(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsPaused:Z

    return-void
.end method

.method public setVideoCloseOnTouch(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mIsCloseOnTouch:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 87
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 89
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mVideoView:Lsg/gumi/bravefrontier/video/BFVideoView;

    iget v1, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceWidth:I

    iget v2, p0, Lsg/gumi/bravefrontier/video/VideoEngine;->mForceHeight:I

    invoke-virtual {v0, v1, v2}, Lsg/gumi/bravefrontier/video/BFVideoView;->setDimensions(II)V

    return-void
.end method
