.class public Lcom/ironsource/sdk/service/Gibberish;
.super Ljava/lang/Object;
.source "Gibberish.java"


# direct methods
.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
