.class public Lcom/android/billingclient/api/SkuDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/SkuDetails$zza;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SkuType cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SKU cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_1
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 38
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeTrialPeriod()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "freeTrialPeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroductoryPrice()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "introductoryPrice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroductoryPriceAmountMicros()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "introductoryPriceAmountMicros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntroductoryPriceCycles()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "introductoryPriceCycles"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntroductoryPricePeriod()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "introductoryPricePeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "original_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPriceAmountMicros()J
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "original_price_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionPeriod()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "subscriptionPeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "SkuDetails: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "skuDetailsToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
