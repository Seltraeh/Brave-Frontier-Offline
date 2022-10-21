.class public interface abstract Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.super Ljava/lang/Object;
.source "WebAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/WebAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebAdPresenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter<",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setAdVisibility(Z)V
.end method
