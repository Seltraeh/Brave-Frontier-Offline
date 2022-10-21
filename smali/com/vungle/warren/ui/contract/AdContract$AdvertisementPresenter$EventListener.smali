.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V
.end method

.method public abstract onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
