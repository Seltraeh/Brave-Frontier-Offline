.class public Lcom/ironsource/mediationsdk/IntegrationData;
.super Ljava/lang/Object;
.source "IntegrationData.java"


# instance fields
.field public activities:[Ljava/lang/String;

.field public externalLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public providers:[Ljava/lang/String;

.field public services:[Ljava/lang/String;

.field public validateWriteExternalStorage:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->services:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->providers:[Ljava/lang/String;

    return-void
.end method
