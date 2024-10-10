Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD041A08BC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728555941; cv=none; b=LP0y+rtZHQK5GlcnSSIz434T3XPnm8x8+Vrk9SDAIKebG0Ngy5uFFCC6ZdKC9/+5nlOFQWcEG1ny2GlDDrTq5IilgVhFcWNxj2F7G5W6GNgVQve6miJFVOE+BAcSf+FBwPo9hgi2YD7dWby/FS+MN6B8ckfmJe5kfHejczBn15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728555941; c=relaxed/simple;
	bh=ymyxP0LPPNAg7fQL/OazHdAcLAfZvaqTebMJleleeWs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tK0LAcqmnvijnVa1cHmdO/gcrL77CldCnEmlNVOqNhPgQEe/DuDFI40wa8N87Z6uAvwYrCDfTvgnr+Ag03F2SM4T4UlLgyc5kwb2xOapLpFmWPezLuJ6zGQRKQdun3K2iuggV/8GN5wgE1vxFDQblQ/SlfLrsGrUMAif/oHF9Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728555941;
	bh=ymyxP0LPPNAg7fQL/OazHdAcLAfZvaqTebMJleleeWs=;
	h=Subject:From:To:Date:From;
	b=JGnYb/tP5loJyLKZoD76qRoevfqO3nVaNwlMBK9fhp3mKqqyVVASI3VAJjpd27Emo
	 60QvxxvWGLe9wZvAq/TG6c27j5W/ZrCeA2Ni5s6NhgK0pw/XLqu4GvP7X5UhjFRU+K
	 gSsmrVkY+D1oDulwyTu93dRXMMTSdh6QAeb5b+PM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E1FDC4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:25:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B31F63803263
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Oct 2024 10:25:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Oct 2024 10:25:45 +0000
Message-Id: <20241010102545.release-6.11.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.3.xz

Linux kernel version 6.11.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.3/v6.11.2

