.class public Lcom/ironsource/network/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ironsource/network/Response;->responseCode:I

    return-void
.end method
