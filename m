Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472751F5EA
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759405547; cv=none; b=IwBmcKtH7j3labQ1yIYEvFDGUioas93W577/HRUzQAm94u35gY5diLyjqwdZUH+iWuR8R33sn36K2K6ioJXHPmA+LJCAUimXSgWuanul7nnKD1IQ3nJ6lDT5txvX+gqUqOEF8nzlo3I1zbF84SYIw5RpXrImNcL8ViRL0/Bb5WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759405547; c=relaxed/simple;
	bh=KBHnTIAn77qAqttluRU4jSO3DKms5broYnMp3zzu5is=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uXlC9yLwecPkkdctj86EGnooYbOQOmeRSya+W32c2S6QtOVrfnbB8XODAT1B3Es7LXvKUyAuUkgtHamS3Bs38ICIOSkZGogPgfdls/5waxv5FG6bd7tp6qG+fWeMHqbkjnce2U2DY+vcaxecxqicHPTEt1dAfMj6oCiiDM1gH+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759405547;
	bh=KBHnTIAn77qAqttluRU4jSO3DKms5broYnMp3zzu5is=;
	h=Subject:From:To:Date:From;
	b=X2g3O623C55GXsAcwUh1dPvWQl7iYgBGUCMtuiNQ/4XrkZZx7KOwv8ff0N8gP7/qu
	 S8Gaz8tSailm3qs40raDrNstOc4rH1rEVK+Mb0puwCWSZRhM+PrdJk3ZWCUMtPrPHg
	 RaQi9waaMZdauw74vsX4Xref/82+VTcCvSQbeuPI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4485C4CEFA
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:45:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE62639D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:45:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.300 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 11:45:38 +0000
Message-Id: <20251002114538.release-5.4.300@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.300
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.300.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.300.xz

Linux kernel version 5.4.300 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.300.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.300.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.300.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.300/v5.4.299

