.class public abstract Lcom/google/android/gms/internal/drive/zzir;
.super Lcom/google/android/gms/internal/drive/zzix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/drive/zzir<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/drive/zzix;"
    }
.end annotation


# instance fields
.field protected zzmw:Lcom/google/android/gms/internal/drive/zzit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzix;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zzix;->zzbi()Lcom/google/android/gms/internal/drive/zzix;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzir;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zziv;->zza(Lcom/google/android/gms/internal/drive/zzir;Lcom/google/android/gms/internal/drive/zzir;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/drive/zzip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzit;->zzs(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zziu;->zza(Lcom/google/android/gms/internal/drive/zzip;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/drive/zzio;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzio;->zzk(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/drive/zzio;->zza(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/drive/zziz;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/drive/zziz;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/drive/zzit;

    invoke-direct {p2}, Lcom/google/android/gms/internal/drive/zzit;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/drive/zzit;->zzr(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/drive/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zziu;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/drive/zzit;->zza(ILcom/google/android/gms/internal/drive/zziu;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zziu;->zza(Lcom/google/android/gms/internal/drive/zziz;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaq()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zzit;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zzit;->zzs(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zziu;->zzaq()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final synthetic zzbi()Lcom/google/android/gms/internal/drive/zzix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzir;

    return-object v0
.end method
