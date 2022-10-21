.class final Lcom/facebook/internal/instrument/ExceptionAnalyzer$1;
.super Ljava/lang/Object;
.source "ExceptionAnalyzer.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/instrument/ExceptionAnalyzer;->sendExceptionAnalysisReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instrumentData:Lcom/facebook/internal/instrument/InstrumentData;


# direct methods
.method constructor <init>(Lcom/facebook/internal/instrument/InstrumentData;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/facebook/internal/instrument/ExceptionAnalyzer$1;->val$instrumentData:Lcom/facebook/internal/instrument/InstrumentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/facebook/internal/instrument/ExceptionAnalyzer$1;->val$instrumentData:Lcom/facebook/internal/instrument/InstrumentData;

    invoke-virtual {p1}, Lcom/facebook/internal/instrument/InstrumentData;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
