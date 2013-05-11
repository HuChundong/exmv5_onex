.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field channelData:[B

.field channelDataLength:I

.field channelStatus:[I

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field envelopeCmd:Ljava/lang/String;

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 27
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    .line 29
    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    .line 30
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    .line 34
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 3
    .parameter "cmdDet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 27
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    .line 29
    iput v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    .line 30
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 39
    return-void
.end method


# virtual methods
.method public getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public getConfirm()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    return-object v0
.end method

.method public getIntResCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v0

    return v0
.end method

.method public getMenuSelection()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    return v0
.end method

.method public getYesNo()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    return v0
.end method

.method public setChannelData([BI)V
    .locals 0
    .parameter "data"
    .parameter "len"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelData:[B

    .line 64
    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelDataLength:I

    .line 65
    return-void
.end method

.method public setChannelStatus([I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->channelStatus:[I

    .line 69
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 59
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 47
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 43
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 55
    return-void
.end method
