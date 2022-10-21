.class public Lcom/ironsource/environment/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
