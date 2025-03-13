Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C75E266B71
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741867818; cv=none; b=tggNbY8ZgbOFzBviQxrICxkW+hmTC6U8NdAmune9NGTOxrIVmoR8vzXlhaghnNT8Cg/yUb248X+lTb575PAlPfnK4LxeJzMSL/pE/chmpfAb/sKIOOv2KbKMRNZGL1wOX5BuudQ/iz22vKqQBtU9d09Aj0k5NwTpkT7g7BSLvh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741867818; c=relaxed/simple;
	bh=gdYJ1/+a1bRse6sET3SZzxY0vJfjy/oGp91CPI15ElA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aSw77BPWxMIHsEMtxfF8BrlVT/HF/6UjBSX7rV7DxErdjFIQ3T0Mt0ai9YdU53isfpJl1n7GrTiraIM2roihr03cQYIpckNn+7sKMK7DzI3SL9v4mrJwkQvSZqITAnG+2LIOJ+yjWE5MNY8oc9yl9bUFsJXhK3P43TYVDiQWfa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741867818;
	bh=gdYJ1/+a1bRse6sET3SZzxY0vJfjy/oGp91CPI15ElA=;
	h=Subject:From:To:Date:From;
	b=B7s8iyK4OtmtHDeyAiKRLrEJyVmx4wzAUNO4SNmUa8lXr1lOx8WLdPVgjqYmqLmu+
	 4bupi88YdBu/Uo3f1FC1H8dMnNzoLg9Oznjvp1bZD4MFdMDsnpZak3sPIC+ceT7FDN
	 HgiUXxEVHTlyOcZloNZivm/L8DJbrkf4cvXJoYDs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96578C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3E1DF3806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.131 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:10:50 +0000
Message-Id: <20250313121050.release-6.1.131@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.131
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.131.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.131.xz

Linux kernel version 6.1.131 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.131.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.131.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.131.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.131/v6.1.130

