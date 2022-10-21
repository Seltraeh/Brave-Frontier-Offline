.class public Lcom/soomla/billing/CurrencyValue;
.super Ljava/lang/Object;
.source "CurrencyValue.java"


# instance fields
.field currency:Ljava/lang/String;

.field decimalPart:Ljava/lang/String;

.field integerPart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/soomla/billing/CurrencyValue;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalPart()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/soomla/billing/CurrencyValue;->decimalPart:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegerPart()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/soomla/billing/CurrencyValue;->integerPart:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/soomla/billing/CurrencyValue;->currency:Ljava/lang/String;

    return-void
.end method

.method public setDecimalPart(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/soomla/billing/CurrencyValue;->decimalPart:Ljava/lang/String;

    return-void
.end method

.method public setIntegerPart(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/soomla/billing/CurrencyValue;->integerPart:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrencyValue [integerPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soomla/billing/CurrencyValue;->integerPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", decimalPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soomla/billing/CurrencyValue;->decimalPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soomla/billing/CurrencyValue;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
