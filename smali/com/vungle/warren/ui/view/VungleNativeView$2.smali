.class Lcom/vungle/warren/ui/view/VungleNativeView$2;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/PresentationFactory$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
            "Lcom/vungle/warren/ui/view/VungleWebClient;",
            ">;",
            "Lcom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {v0, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$202(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 290
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    .line 291
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 293
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 294
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-interface {p1, p2, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 295
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1, v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$300(Lcom/vungle/warren/ui/view/VungleNativeView;Landroid/os/Bundle;)V

    .line 296
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    :cond_1
    return-void

    .line 283
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 284
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :goto_1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
