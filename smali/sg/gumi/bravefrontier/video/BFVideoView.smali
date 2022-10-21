.class public Lsg/gumi/bravefrontier/video/BFVideoView;
.super Landroid/widget/VideoView;
.source "BFVideoView.java"


# static fields
.field private static instance:Lsg/gumi/bravefrontier/video/BFVideoView;


# instance fields
.field private mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mForceHeight:I

.field private mForceWidth:I

.field private mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceHeight:I

    .line 32
    iput p2, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceWidth:I

    .line 35
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    return-void
.end method

.method public static clearInstance()V
    .locals 3

    .line 67
    sget-object v0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v0, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 71
    sget-object v1, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    iget-object v1, v1, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    :cond_0
    return-void
.end method

.method public static getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;
    .locals 3

    .line 45
    sget-object v0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0037

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0700da

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsg/gumi/bravefrontier/video/BFVideoView;

    sput-object v0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 57
    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/video/BFVideoView;->Initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 60
    :cond_0
    sget-object p0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    return-object p0
.end method

.method public static isInstance()Z
    .locals 1

    .line 91
    sget-object v0, Lsg/gumi/bravefrontier/video/BFVideoView;->instance:Lsg/gumi/bravefrontier/video/BFVideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public Initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    return-void
.end method

.method public finishVideo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoFinishedCallback()V

    :goto_0
    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    .line 140
    invoke-static {}, Lsg/gumi/bravefrontier/video/BFVideoView;->clearInstance()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 169
    iget p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceWidth:I

    iget p2, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 150
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/video/VideoEngine;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 145
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoPreparedCallback()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 157
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/video/VideoEngine;->onResume()V

    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "Video Activity File Name"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 122
    iget v7, v1, Landroid/graphics/Point;->y:I

    .line 124
    new-instance v0, Lsg/gumi/bravefrontier/video/VideoEngine;

    iget-object v3, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lsg/gumi/bravefrontier/video/VideoEngine;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Lsg/gumi/bravefrontier/video/BFVideoView;Ljava/lang/String;II)V

    iput-object v0, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    .line 125
    invoke-virtual {v0, p2}, Lsg/gumi/bravefrontier/video/VideoEngine;->setVideoCloseOnTouch(Z)V

    .line 126
    iget-object p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mVideoEngine:Lsg/gumi/bravefrontier/video/VideoEngine;

    invoke-virtual {p1}, Lsg/gumi/bravefrontier/video/VideoEngine;->start()V

    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    .line 163
    iput p2, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceHeight:I

    .line 164
    iput p1, p0, Lsg/gumi/bravefrontier/video/BFVideoView;->mForceWidth:I

    return-void
.end method
