.class Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;
.super Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected sessionKey:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p6

    const-string v2, "UnicodeLittleUnmarked"

    .line 1135
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1137
    iput v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    .line 1140
    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1142
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1145
    new-instance v11, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v5, v11

    move-object/from16 v6, p7

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    const/high16 v5, 0x800000

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    if-eqz p8, :cond_1

    if-eqz p7, :cond_1

    .line 1156
    :try_start_0
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1157
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    .line 1159
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v5

    goto :goto_0

    .line 1161
    :cond_0
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v5

    goto :goto_0

    :cond_1
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    .line 1166
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1167
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_2

    .line 1169
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v5

    goto :goto_0

    .line 1171
    :cond_2
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v5

    goto :goto_0

    .line 1177
    :cond_3
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1178
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_4

    .line 1180
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v5

    goto :goto_0

    .line 1182
    :cond_4
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v5
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v5, 0x0

    new-array v5, v5, [B

    .line 1188
    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1189
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v5

    iput-object v5, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_5

    .line 1191
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v5

    goto :goto_0

    .line 1193
    :cond_5
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v5

    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    .line 1197
    invoke-virtual {v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v0

    invoke-static {v0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object v0

    iput-object v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 1199
    iput-object v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    .line 1202
    :goto_1
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    .line 1203
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    move-object v0, p3

    .line 1204
    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1206
    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unicode not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 14

    .line 1213
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v0, v0

    .line 1214
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v1, v1

    .line 1216
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    array-length v2, v2

    .line 1217
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    array-length v3, v3

    .line 1218
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v4, v4

    .line 1220
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v5, :cond_0

    .line 1221
    array-length v5, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x48

    add-int/lit8 v7, v1, 0x48

    add-int v8, v7, v0

    add-int v9, v8, v2

    add-int v10, v9, v4

    add-int v11, v10, v3

    add-int v12, v11, v5

    const/4 v13, 0x3

    .line 1235
    invoke-virtual {p0, v12, v13}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->prepareResponse(II)V

    .line 1238
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1239
    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1242
    invoke-virtual {p0, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1245
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1246
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1249
    invoke-virtual {p0, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1252
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1253
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1256
    invoke-virtual {p0, v8}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1259
    invoke-virtual {p0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1260
    invoke-virtual {p0, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1263
    invoke-virtual {p0, v9}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1266
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1267
    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1270
    invoke-virtual {p0, v10}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1273
    invoke-virtual {p0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1274
    invoke-virtual {p0, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1277
    invoke-virtual {p0, v11}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    .line 1281
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit16 v1, v0, 0x80

    or-int/lit16 v1, v1, 0x3000

    and-int/lit16 v2, v0, 0x200

    or-int/2addr v1, v2

    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    const v2, 0x8000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x20

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0x105

    .line 1309
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    const/16 v0, 0xa28

    .line 1311
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0xf00

    .line 1313
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    .line 1316
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1317
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1318
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1319
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1320
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1321
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 1324
    :cond_1
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
