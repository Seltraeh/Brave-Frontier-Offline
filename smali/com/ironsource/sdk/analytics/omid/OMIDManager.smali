.class public Lcom/ironsource/sdk/analytics/omid/OMIDManager;
.super Ljava/lang/Object;
.source "OMIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;
    }
.end annotation


# static fields
.field private static mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

.field private static mIsActivated:Z

.field private static final mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Ironsrc"

    const-string v1, "7"

    .line 171
    invoke-static {v0, v1}, Lcom/iab/omid/library/ironsrc/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Partner;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    const/4 v0, 0x0

    .line 173
    sput-boolean v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 178
    sget-boolean v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-nez v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/iab/omid/library/ironsrc/Omid;->activate(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 180
    sput-boolean p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    :cond_0
    return-void
.end method

.method private static assertAdSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 253
    sget-boolean v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OMID Session has not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OMID has not been activated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Landroid/webkit/WebView;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->creativeType:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    iget-object v1, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->impressionType:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    iget-object v2, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v3, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-boolean v4, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->isolateVerificationScripts:Z

    .line 218
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    iget-object p0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->customReferenceData:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p0}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/ironsrc/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;

    move-result-object p0

    .line 227
    invoke-static {v0, p0}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p0

    .line 228
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    return-object p0
.end method

.method public static finishSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 233
    invoke-static {}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->assertAdSession()V

    .line 234
    sget-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->finish()V

    const/4 v0, 0x0

    .line 235
    sput-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    return-void
.end method

.method public static getOMIDData()Lcom/ironsource/sdk/data/SSAObj;
    .locals 3

    .line 185
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    const-string v1, "omidVersion"

    .line 186
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iab/omid/library/ironsrc/Omid;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omidPartnerName"

    .line 187
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ironsrc"

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omidPartnerVersion"

    .line 188
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static impressionOccurred(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 239
    invoke-static {}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->assertAdSession()V

    .line 240
    sget-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/ironsrc/adsession/AdSession;)Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    move-result-object v0

    :try_start_0
    const-string v1, "signalLoaded"

    .line 242
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->loaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->impressionOccurred()V

    return-void
.end method

.method public static startSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Landroid/webkit/WebView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 198
    sget-boolean v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->adViewId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Lcom/ironsource/sdk/WPAD/AdViewsManager;->getInstance()Lcom/ironsource/sdk/WPAD/AdViewsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->adViewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/WPAD/AdViewsManager;->getAdViewById(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "webview not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->createSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Landroid/webkit/WebView;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mAdSession:Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    .line 212
    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->start()V

    return-void

    .line 202
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OMID Session has already started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OMID has not been activated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static startSession(Lorg/json/JSONObject;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 193
    invoke-static {p0}, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->createFromJSON(Lorg/json/JSONObject;)Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;

    move-result-object p0

    .line 194
    invoke-static {p0, p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->startSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Landroid/webkit/WebView;)V

    return-void
.end method
