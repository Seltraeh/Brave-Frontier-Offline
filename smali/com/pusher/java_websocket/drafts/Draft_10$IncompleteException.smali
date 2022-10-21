.class Lcom/pusher/java_websocket/drafts/Draft_10$IncompleteException;
.super Ljava/lang/Throwable;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/drafts/Draft_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncompleteException"
.end annotation


# instance fields
.field private preferedsize:I


# direct methods
.method public constructor <init>(Lcom/pusher/java_websocket/drafts/Draft_10;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 41
    iput p2, p0, Lcom/pusher/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/pusher/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return v0
.end method
