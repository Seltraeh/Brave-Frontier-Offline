.class public interface abstract Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.super Ljava/lang/Object;
.source "LocalAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/LocalAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalPresenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter<",
        "Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onDownload()V
.end method

.method public abstract onMediaError(Ljava/lang/String;)Z
.end method

.method public abstract onMute(Z)V
.end method

.method public abstract onPrivacy()V
.end method

.method public abstract onProgressUpdate(IF)V
.end method

.method public abstract onVideoStart(IF)V
.end method
