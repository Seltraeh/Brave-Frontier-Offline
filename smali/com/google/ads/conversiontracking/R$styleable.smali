.class public final Lcom/google/ads/conversiontracking/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final AppDataSearch:[I

.field public static final Corpus:[I

.field public static final Corpus_contentProviderUri:I = 0x2

.field public static final Corpus_corpusId:I = 0x0

.field public static final Corpus_corpusVersion:I = 0x1

.field public static final Corpus_trimmable:I = 0x3

.field public static final FeatureParam:[I

.field public static final FeatureParam_paramName:I = 0x0

.field public static final FeatureParam_paramValue:I = 0x1

.field public static final GlobalSearch:[I

.field public static final GlobalSearchCorpus:[I

.field public static final GlobalSearchCorpus_allowShortcuts:I = 0x0

.field public static final GlobalSearchSection:[I

.field public static final GlobalSearchSection_sectionContent:I = 0x1

.field public static final GlobalSearchSection_sectionType:I = 0x0

.field public static final GlobalSearch_defaultIntentAction:I = 0x3

.field public static final GlobalSearch_defaultIntentActivity:I = 0x5

.field public static final GlobalSearch_defaultIntentData:I = 0x4

.field public static final GlobalSearch_searchEnabled:I = 0x0

.field public static final GlobalSearch_searchLabel:I = 0x1

.field public static final GlobalSearch_settingsDescription:I = 0x2

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0x7

.field public static final MapAttrs_uiScrollGestures:I = 0x8

.field public static final MapAttrs_uiTiltGestures:I = 0x9

.field public static final MapAttrs_uiZoomControls:I = 0xa

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_useViewLifecycle:I = 0xc

.field public static final MapAttrs_zOrderOnTop:I = 0xd

.field public static final Section:[I

.field public static final SectionFeature:[I

.field public static final SectionFeature_featureType:I = 0x0

.field public static final Section_indexPrefixes:I = 0x4

.field public static final Section_noIndex:I = 0x2

.field public static final Section_sectionFormat:I = 0x1

.field public static final Section_sectionId:I = 0x0

.field public static final Section_sectionWeight:I = 0x3

.field public static final Section_subsectionSeparator:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 589
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/conversiontracking/R$styleable;->AdsAttrs:[I

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 659
    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->AppDataSearch:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 683
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->Corpus:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 766
    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/ads/conversiontracking/R$styleable;->FeatureParam:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 824
    fill-array-data v3, :array_3

    sput-object v3, Lcom/google/ads/conversiontracking/R$styleable;->GlobalSearch:[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x7f010016

    aput v5, v4, v0

    .line 946
    sput-object v4, Lcom/google/ads/conversiontracking/R$styleable;->GlobalSearchCorpus:[I

    new-array v1, v1, [I

    .line 986
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->GlobalSearchSection:[I

    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 1068
    fill-array-data v1, :array_5

    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->MapAttrs:[I

    new-array v1, v2, [I

    .line 1298
    fill-array-data v1, :array_6

    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->Section:[I

    new-array v1, v3, [I

    const v2, 0x7f01000d

    aput v2, v1, v0

    .line 1416
    sput-object v1, Lcom/google/ads/conversiontracking/R$styleable;->SectionFeature:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    :array_2
    .array-data 4
        0x7f01000e
        0x7f01000f
    .end array-data

    :array_3
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
    .end array-data

    :array_4
    .array-data 4
        0x7f010017
        0x7f010018
    .end array-data

    :array_5
    .array-data 4
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
    .end array-data

    :array_6
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
