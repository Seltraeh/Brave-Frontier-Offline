.class final Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;
.super Ljava/lang/Object;
.source "BFWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/webview/BFWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BFWebViewTask"
.end annotation


# static fields
.field static final TASK_TYPE_CLOSE_BROWSER_BUTTON:I = 0x67

.field static final TASK_TYPE_CLOSE_WEBVIEW_STEP_1:I = 0x3

.field static final TASK_TYPE_CLOSE_WEBVIEW_STEP_2:I = 0x4

.field static final TASK_TYPE_PLAY_YOUTUBE_VIDEO:I = 0x5

.field static final TASK_TYPE_SET_BROWSER_BUTTON_VISIBILITY:I = 0x66

.field static final TASK_TYPE_SET_WEBVIEW_VISIBILITY:I = 0x2

.field static final TASK_TYPE_SHOW_BROWSER_BUTTON:I = 0x65

.field static final TASK_TYPE_SHOW_WEBVIEW:I = 0x1


# instance fields
.field param:Ljava/lang/Object;

.field taskType:I

.field final synthetic this$0:Lsg/gumi/bravefrontier/webview/BFWebView;


# direct methods
.method private constructor <init>(Lsg/gumi/bravefrontier/webview/BFWebView;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 551
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 554
    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    invoke-static {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$800(Lsg/gumi/bravefrontier/webview/BFWebView;)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$700(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :pswitch_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$600(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$500(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    invoke-static {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$400(Lsg/gumi/bravefrontier/webview/BFWebView;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    invoke-static {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$300(Lsg/gumi/bravefrontier/webview/BFWebView;)V

    goto :goto_0

    .line 559
    :cond_3
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$200(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :cond_4
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->this$0:Lsg/gumi/bravefrontier/webview/BFWebView;

    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->access$100(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
