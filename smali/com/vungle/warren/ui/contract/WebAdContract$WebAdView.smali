.class public interface abstract Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.super Ljava/lang/Object;
.source "WebAdContract.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/WebAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebAdView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView<",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setVisibility(Z)V
.end method

.method public abstract updateWindow(Z)V
.end method
