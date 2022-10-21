.class public interface abstract Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
.super Ljava/lang/Object;
.source "LocalAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/LocalAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView<",
        "Lcom/vungle/warren/ui/presenter/LocalAdPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getVideoPosition()I
.end method

.method public abstract isDialogVisible()Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract playVideo(Ljava/io/File;ZI)V
.end method

.method public abstract showCTAOverlay(ZZ)V
.end method
