Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23B4AD2F
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732287330; cv=none; b=amhOz6d7Z1FJH/OooWfEl3AH0srpw0QsgMWoJkCn9YmumDW4WY+d89Ngzv0cdpLYa6TIPseKwKeGKILJAycwR9DMABMvMXL4wT4MF0HAJ4n/b3ULb6FEe2DgjEe061LgqAgL1vrG2lwM5jBeyoiIjpSfOP08U3aNMfm4uxfAxmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732287330; c=relaxed/simple;
	bh=Ni+pUl7HfRTKSYWNHNJlZRP2nI8QRAzk2Wm8Q02WcJ4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=G9El32kmcdPFATztoxNypsz/pDBNaon7MiKEG1fOS7WU7gAHqPW5XDyieD6lwcRRdhOA1eZpcPLPnvREosVZAeGVE0Xnp+JpnnTYzgg/QRCoJ9bQknHRDk43hwO4Fgr/Fwpxa1i2v1YJOz1KR021mxYiIA3Gb79C6oYItlQPhbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1732287330;
	bh=Ni+pUl7HfRTKSYWNHNJlZRP2nI8QRAzk2Wm8Q02WcJ4=;
	h=Subject:From:To:Date:From;
	b=LWXmK0O5a4fnMpJeIjhKtGENzyGGx992g8wP2yDSc5jmoClNqmj8+AV7sBcinQIRm
	 /jrF3bz2sRdFVfjF1I50AJSDK7mmHYPt0Mg8z0Klu5V7HN1I/mNomBJ3rIpvRffW9D
	 0N8u7873lxt0YrENgO0fb5PrIQVYtsPwNHcKCyJA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 422B3C4CECF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 756E73809A00
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.63 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 22 Nov 2024 14:55:41 +0000
Message-Id: <20241122145541.release-6.6.63@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.63
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.63.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.63.xz

Linux kernel version 6.6.63 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.63.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.63.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.63.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.63/v6.6.62

