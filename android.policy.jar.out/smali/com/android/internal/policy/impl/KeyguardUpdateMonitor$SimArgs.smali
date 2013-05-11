.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# static fields
.field public static isSubPhone:Z


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->isSubPhone:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 207
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 212
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc.intent.action.PHONE_REQUEST_LOCKED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 216
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Dual only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_0
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_1
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, stateExtra:Ljava/lang/String;
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, absentReason:Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 232
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 311
    .end local v0           #absentReason:Ljava/lang/String;
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    return-object v5

    .line 234
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 236
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 237
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 238
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 239
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, lockedReason:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->isSubPhone:Z

    if-eqz v5, :cond_6

    .line 244
    const-string v5, "IccStatusInfo"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :goto_1
    const-string v5, "PIN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 264
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 247
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const-string v5, "IccStatusInfo"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 250
    :cond_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 251
    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->isSubPhone:Z

    if-eqz v5, :cond_8

    .line 252
    const-string v5, "IccStatusInfo"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 255
    :cond_8
    const-string v5, "IccStatusInfo"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 259
    :cond_9
    const-string v5, "IccStatusInfo"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 265
    :cond_a
    const-string v5, "PUK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 266
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 268
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    const-string v5, "NETWORK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 269
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 272
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 274
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_d
    const-string v5, "NETWORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 275
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 277
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_e
    const-string v5, "ICC_FAIL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 279
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2       #lockedReason:Ljava/lang/String;
    const-string v5, "PERM_BLOCKED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 281
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 283
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_f
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 285
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_10
    const-string v5, "IMEI_LOCK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 286
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 288
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_11
    const-string v5, "ICC_EXPIRED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 289
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 293
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_12
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "NOT_READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 295
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 297
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_13
    const-string v5, "com.htc.intent.action.PHONE_REQUEST_LOCKED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 298
    const-string v5, "simState"

    invoke-virtual {p0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, lock:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_14

    .line 300
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 306
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    :goto_2
    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v5, :cond_2

    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PHONE_REQUEST_LOCKED - state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_14
    const/4 v5, 0x3

    if-ne v1, v5, :cond_15

    .line 302
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_2

    .line 304
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_15
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_2

    .line 309
    .end local v1           #lock:I
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_16
    #sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$Injector;->getIccCardState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
