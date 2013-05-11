.class public Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;
.super Landroid/os/Handler;
.source "HtcCdmaProfileTracker.java"


# static fields
.field protected static final EVENT_OMADM_TRIGGER:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "HtcDPT"

.field static mProfileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field dct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mCurrentProfile:I

.field protected mIsDisposed:Z

.field protected mOmadmTrigger:Z

.field p:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    sput-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    .line 59
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 67
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sput-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 8
    .parameter "dct"
    .parameter "mPhone"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    iput v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 42
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 44
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 51
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mIsDisposed:Z

    .line 55
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mOmadmTrigger:Z

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOMADMTrigger(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 107
    const-string v2, "HtcDPT"

    const-string v3, "mProfileList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 111
    :cond_0
    new-array v0, v6, [I

    .line 114
    .local v0, apnNeedSwitch:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.net.apnswitch."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_1
    const/16 v2, 0xb

    const/16 v3, 0x3e9

    aput v3, v0, v2

    .line 122
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_2

    .line 124
    const/4 v2, 0x3

    aput v5, v0, v2

    .line 127
    :cond_2
    const/16 v2, 0xd

    const/16 v3, 0x3ea

    aput v3, v0, v2

    .line 128
    const/16 v2, 0x3e8

    aput v2, v0, v7

    .line 131
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_3

    .line 133
    aget v2, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->put(II)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_3
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->put(II)V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dumpAllProfiles()V

    goto :goto_0
.end method

.method private dumpAllProfiles()V
    .locals 3

    .prologue
    .line 166
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 168
    .local v1, profileID:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dumpProfile(I)V

    goto :goto_0

    .line 170
    .end local v1           #profileID:I
    :cond_0
    return-void
.end method

.method private put(II)V
    .locals 4
    .parameter "profileID"
    .parameter "apnID"

    .prologue
    .line 191
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 193
    const-string v1, "HtcDPT"

    const-string v2, "mProfileList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 201
    .local v0, al:Ljava/util/ArrayList;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public ApnIDToProfileID(I)I
    .locals 8
    .parameter "apnid"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x3

    .line 295
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 298
    .local v0, al:Ljava/util/ArrayList;
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    .local v3, skipcurrent:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    const-string v4, "HtcDPT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnIDToProfileID: return current, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 330
    :goto_1
    return v2

    .line 298
    .end local v3           #skipcurrent:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 318
    .restart local v3       #skipcurrent:Z
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 320
    .local v2, profileID:I
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #al:Ljava/util/ArrayList;
    check-cast v0, Ljava/util/ArrayList;

    .line 321
    .restart local v0       #al:Ljava/util/ArrayList;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 329
    .end local v2           #profileID:I
    :cond_4
    const-string v4, "HtcDPT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnIDToProfileID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v2, 0xa

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mIsDisposed:Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOMADMTrigger(Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method public dumpProfile(I)V
    .locals 4
    .parameter "profileID"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getSupportedApnTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, sArr:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 181
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpProfile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpProfile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentProfile()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    return v0
.end method

.method public getSupportedApnTypes(I)[Ljava/lang/String;
    .locals 6
    .parameter "profileID"

    .prologue
    .line 213
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 214
    .local v0, al:Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Integer;

    .line 217
    .local v1, arr:[Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 218
    .local v3, sArr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v1           #arr:[Ljava/lang/Integer;
    .end local v2           #i:I
    .end local v3           #sArr:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 149
    const-string v0, "HtcDPT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mIsDisposed:Z

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const-string v0, "HtcDPT"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mOmadmTrigger:Z

    .line 159
    const-string v0, "HtcDPT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADMTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mOmadmTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;
    .locals 19
    .parameter "profileID"

    .prologue
    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getSupportedApnTypes(I)[Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, types:[Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    const-string v15, "IP"

    const-string v16, "IP"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 235
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "HtcDPT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeApnSettingByProfileID: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnsetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v1
.end method

.method public profileAllowDataConnection()Z
    .locals 7

    .prologue
    const/16 v6, 0xaf

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, allow:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 254
    :pswitch_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x40

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_2

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-eqz v4, :cond_2

    .line 258
    :cond_0
    const-string v4, "dm.hfa"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, provision:I
    const-string v4, "HtcDPT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dm.hfa provision="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v1, :cond_1

    move v0, v2

    .line 282
    .end local v1           #provision:I
    :goto_0
    const-string v2, "HtcDPT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileAllowDataConnection()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",CurDataProfile()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",needsOtaSP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",OMADMTrigger(false)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mOmadmTrigger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v0

    .line 251
    :pswitch_1
    const/4 v0, 0x1

    .line 252
    goto :goto_0

    .restart local v1       #provision:I
    :cond_1
    move v0, v3

    .line 260
    goto :goto_0

    .line 263
    .end local v1           #provision:I
    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_4

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-nez v4, :cond_4

    .line 264
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mOmadmTrigger:Z

    if-nez v4, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    .line 269
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->p:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_6
    const-string v2, "HtcDPT"

    const-string v3, "KDDI project block data call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentProfile(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 88
    const-string v0, "HtcDPT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
