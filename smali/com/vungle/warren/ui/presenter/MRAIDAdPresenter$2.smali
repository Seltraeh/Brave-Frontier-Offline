.class Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Report;

    move-result-object v2

    const-string v3, "mraidCloseByTimer"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 278
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Report;

    move-result-object v2

    const-string v3, "mraidClose"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 279
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$400(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Report;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository$SaveCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 281
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$100(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    return-void
.end method
