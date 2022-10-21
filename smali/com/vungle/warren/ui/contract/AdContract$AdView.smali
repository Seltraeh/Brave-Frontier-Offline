.class public interface abstract Lcom/vungle/warren/ui/contract/AdContract$AdView;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract destroyAdView()V
.end method

.method public abstract getWebsiteUrl()Ljava/lang/String;
.end method

.method public abstract hasWebView()Z
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract pauseWeb()V
.end method

.method public abstract removeWebView()V
.end method

.method public abstract resumeWeb()V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showCloseButton()V
.end method

.method public abstract showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showWebsite(Ljava/lang/String;)V
.end method
