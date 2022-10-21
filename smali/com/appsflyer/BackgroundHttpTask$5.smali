.class public final Lcom/appsflyer/BackgroundHttpTask$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/BackgroundHttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/BackgroundHttpTask;


# direct methods
.method public constructor <init>(Lcom/appsflyer/BackgroundHttpTask;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/appsflyer/BackgroundHttpTask$5;->ǃ:Lcom/appsflyer/BackgroundHttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/appsflyer/BackgroundHttpTask$5;->ǃ:Lcom/appsflyer/BackgroundHttpTask;

    invoke-virtual {v0}, Lcom/appsflyer/BackgroundHttpTask;->doInBackground()Ljava/net/HttpURLConnection;

    return-void
.end method
