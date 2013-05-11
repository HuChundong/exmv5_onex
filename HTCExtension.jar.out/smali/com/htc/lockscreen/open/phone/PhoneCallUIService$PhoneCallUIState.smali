.class public Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;
.super Ljava/lang/Object;
.source "PhoneCallUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/open/phone/PhoneCallUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneCallUIState"
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RING:I = 0x1

.field public static final CALL_STYLE_NORMAL:I = 0x0

.field public static final CALL_STYLE_VIDEO:I = 0x1

.field public static final FLAG_SENDMSG:I = 0x2

.field public static final FLAG_SILENT:I = 0x1


# instance fields
.field private final mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "callState"
    .parameter "opName"
    .parameter "callType"
    .parameter "phone"
    .parameter "name"
    .parameter "displayNumber"
    .parameter "location"
    .parameter "hint"
    .parameter "snStatus"
    .parameter "snIcon"
    .parameter "eventDesp"
    .parameter "eventIcon"

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState;

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/htc/lockscreen/telephony/PhoneState;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;)Lcom/htc/lockscreen/telephony/PhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    return-object v0
.end method


# virtual methods
.method public getBirthdayInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getBirthdayInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getCallState()I

    move-result v0

    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getDueDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getFlag()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getId()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getPhoneComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSocailState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getSocailState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getSocialIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/telephony/PhoneState;->getTaskName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBirthdayInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "birthday"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setBirthdayInfo(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .parameter "callState"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setCallState(I)V

    .line 302
    return-void
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setDisplayNumber(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 1
    .parameter "duedate"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setDueDate(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setFlag(I)V

    .line 294
    return-void
.end method

.method public setId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setId(I)V

    .line 278
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setLocation(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setName(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/telephony/PhoneState;->setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 226
    return-void
.end method

.method public setSocailState(Ljava/lang/String;)V
    .locals 1
    .parameter "social"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setSocailState(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setSocialIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setSocialIcon(Landroid/graphics/Bitmap;)V

    .line 218
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 1
    .parameter "taskname"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$PhoneCallUIState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/telephony/PhoneState;->setTaskName(Ljava/lang/String;)V

    .line 310
    return-void
.end method
