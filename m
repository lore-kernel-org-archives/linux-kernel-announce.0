Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B381B32A1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 14:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723644053; cv=none; b=GOVUbPltm2TdeLS8Els8/gR4XVay7d2s5QXfz0sh4OoVdzlpBMXzL/3epEAbWq53FW7OP4BehRK1g99rX/EmcElvwRCya+gb4ZwI0aQ4bujLvllH3GVQP74p7dkqaKlr5VEl+UrQfbBIlGfFm1t0atq07mc18DR7zcPG6GnGEpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723644053; c=relaxed/simple;
	bh=7dhAAPLka6Xq5KGg74KSIt9+gVPq7ROLNh0f3r3xOCU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Oflwbs2vWpoDjCfiWfpS7dCUjhdpOxcuWMBrS3QcDDj0KwQozUBtgSAnsg7q4yYkaGjVhooqVbgESkJhBLPIn/PS+7s4cS8/+naNx+CCXr7vJ9hGRNTU46kfk2sDQTFBha8G6lCw4zycEYGppI8YumTqlxeSala4ZOBHHqOaJw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723644053;
	bh=7dhAAPLka6Xq5KGg74KSIt9+gVPq7ROLNh0f3r3xOCU=;
	h=Subject:From:To:Date:From;
	b=ScdR4GXGFL+fDzYP3KKSVKTVPbOCrzlljyySnwwkkCWJsY9fCMZM6OPXWLnSwvBSw
	 kNtWQhp9jlQ+j4tYtiYQohDP9kLBe15MO1d4GgW06/KQPUoW8mgdlU+Ps4NWqflMPh
	 OB/VGTbBCBF88Pxy2mNMIRn8LexsmMuaQZVveBtA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8621AC116B1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 14:00:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5D2338232A8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 14:00:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 14 Aug 2024 14:00:51 +0000
Message-Id: <20240814140051.release-6.10.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.5.xz

Linux kernel version 6.10.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.5/v6.10.4

