.class public Lcom/android/internal/telephony/DataCallState;
.super Ljava/lang/Object;
.source "DataCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataCallState$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataCallState;->DBG:Z

    .line 39
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->LOG_TAG:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 55
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 19
    .parameter "linkProperties"
    .parameter "okToUseSystemPropertyDns"

    .prologue
    .line 114
    if-nez p1, :cond_1

    .line 115
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 119
    .restart local p1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    move/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 120
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "net."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, propertyPrefix:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_9

    aget-object v2, v5, v9

    .line 135
    .local v2, addr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-eqz v16, :cond_2

    .line 133
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 117
    .end local v2           #addr:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #propertyPrefix:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 141
    .restart local v2       #addr:Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #propertyPrefix:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, ap:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 143
    const/16 v16, 0x0

    aget-object v2, v4, v16

    .line 144
    const/16 v16, 0x1

    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 150
    .local v3, addrPrefixLen:I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 154
    .local v10, ia:Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v16

    if-nez v16, :cond_0

    .line 155
    if-nez v3, :cond_3

    .line 157
    instance-of v0, v10, Ljava/net/Inet4Address;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    const/16 v3, 0x20

    .line 160
    :cond_3
    :goto_4
    instance-of v0, v10, Ljava/net/Inet4Address;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 161
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fill in to v4 interface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 168
    :goto_5
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addr/pl="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v10, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 170
    .local v11, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 257
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #addrPrefixLen:I
    .end local v4           #ap:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #ia:Ljava/net/InetAddress;
    .end local v11           #la:Landroid/net/LinkAddress;
    .end local v12           #len$:I
    :catch_0
    move-exception v8

    .line 258
    .local v8, e:Ljava/net/UnknownHostException;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 260
    sget-object v14, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 271
    .end local v8           #e:Ljava/net/UnknownHostException;
    .end local v13           #propertyPrefix:Ljava/lang/String;
    .local v14, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :goto_6
    sget-object v16, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 273
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " result="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 279
    :cond_4
    return-object v14

    .line 146
    .end local v14           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    .restart local v2       #addr:Ljava/lang/String;
    .restart local v4       #ap:[Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #propertyPrefix:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #addrPrefixLen:I
    goto/16 :goto_3

    .line 151
    :catch_1
    move-exception v8

    .line 152
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v16, Ljava/net/UnknownHostException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Non-numeric ip addr="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 157
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #ia:Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    goto/16 :goto_4

    .line 164
    :cond_7
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fill in to v6 interface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 174
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #addrPrefixLen:I
    .end local v4           #ap:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #ia:Ljava/net/InetAddress;
    .end local v12           #len$:I
    :cond_8
    new-instance v16, Ljava/net/UnknownHostException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "no address for ifname="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 180
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 181
    const-string v17, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DBG] dns"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    const-string v16, " is null"

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", len="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_a
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DBG] isdnsok="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_e

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v12, v5

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v12, :cond_12

    aget-object v2, v5, v9

    .line 189
    .restart local v2       #addr:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DBG] addr = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 187
    :cond_b
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 181
    .end local v2           #addr:Ljava/lang/String;
    :cond_c
    const-string v16, " contained"
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 197
    .restart local v2       #addr:Ljava/lang/String;
    :cond_d
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    .line 201
    .restart local v10       #ia:Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v16

    if-nez v16, :cond_b

    .line 202
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_9

    .line 198
    .end local v10           #ia:Ljava/net/InetAddress;
    :catch_2
    move-exception v8

    .line 199
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    new-instance v16, Ljava/net/UnknownHostException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Non-numeric dns addr="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 205
    .end local v2           #addr:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_e
    if-eqz p2, :cond_11

    .line 206
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v7, v0, [Ljava/lang/String;

    .line 207
    .local v7, dnsServers:[Ljava/lang/String;
    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dns1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v16

    .line 208
    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dns2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v16

    .line 210
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[DBG] dns[0]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v7, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",dns[1]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v7, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object v5, v7

    array-length v12, v5

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v12, :cond_12

    aget-object v6, v5, v9

    .line 214
    .local v6, dnsAddr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v16

    if-eqz v16, :cond_10

    .line 212
    :cond_f
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 219
    :cond_10
    :try_start_7
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v10

    .line 223
    .restart local v10       #ia:Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v16

    if-nez v16, :cond_f

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_b

    .line 220
    .end local v10           #ia:Ljava/net/InetAddress;
    :catch_3
    move-exception v8

    .line 221
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    new-instance v16, Ljava/net/UnknownHostException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Non-numeric dns addr="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 228
    .end local v6           #dnsAddr:Ljava/lang/String;
    .end local v7           #dnsServers:[Ljava/lang/String;
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_11
    new-instance v16, Ljava/net/UnknownHostException;

    const-string v17, "Empty dns response and no system default dns"

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 232
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_14

    .line 233
    :cond_13
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "gw"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, sysGateways:Ljava/lang/String;
    if-eqz v15, :cond_16

    .line 235
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 240
    .end local v15           #sysGateways:Ljava/lang/String;
    :cond_14
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v12, v5

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v12, :cond_18

    aget-object v2, v5, v9

    .line 243
    .restart local v2       #addr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_17

    .line 240
    :cond_15
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 237
    .end local v2           #addr:Ljava/lang/String;
    .restart local v15       #sysGateways:Ljava/lang/String;
    :cond_16
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_c

    .line 247
    .end local v15           #sysGateways:Ljava/lang/String;
    .restart local v2       #addr:Ljava/lang/String;
    :cond_17
    :try_start_9
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v10

    .line 251
    .restart local v10       #ia:Ljava/net/InetAddress;
    :try_start_a
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v16

    if-nez v16, :cond_15

    .line 252
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_e

    .line 248
    .end local v10           #ia:Ljava/net/InetAddress;
    :catch_4
    move-exception v8

    .line 249
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    new-instance v16, Ljava/net/UnknownHostException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Non-numeric gateway addr="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 256
    .end local v2           #addr:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_18
    sget-object v14, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    .restart local v14       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_6

    .line 263
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #propertyPrefix:Ljava/lang/String;
    .end local v14           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->version:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 264
    sget-object v14, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v14       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_6

    .line 266
    .end local v14           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_1a
    sget-object v14, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v14       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 77
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "DataCallState: {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " retry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' ifname=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v5, "\' addresses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 88
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0           #addr:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_1
    const-string v5, "] dnses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 94
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 98
    :cond_3
    const-string v5, "] gateways=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 100
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    .end local v0           #addr:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    :cond_5
    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
