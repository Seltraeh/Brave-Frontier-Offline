.class Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

.field final synthetic val$bidToken:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->this$0:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->val$bidToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->this$0:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->access$000(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;)Lcom/vungle/warren/HeaderBiddingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->val$bidToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
