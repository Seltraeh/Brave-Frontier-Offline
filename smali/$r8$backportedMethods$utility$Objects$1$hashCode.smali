.class public synthetic L$r8$backportedMethods$utility$Objects$1$hashCode;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic hashCode(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
