Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CD623D2AE
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746777898; cv=none; b=nmQTDRRWVpfScaKP6ru0gHf3pw+lt9k4KUX4ZSdEBn04qZnlH59gArXJf1IM47BUPVXyaphgjNGdGq9qYvhK9ikw1PjgqVPgDS1at9ORWrq0c9BuZrZoD6Zh6S/4pAGZmZY/XKhgd0+ff1rEr9FhUvRmHIdbAH7N8ShATiEUqhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746777898; c=relaxed/simple;
	bh=u5OvWnq7wOwuGmaGwLKb0+j15RWUjgW+MAq88llaG00=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=b44kXsQxJeITbEasjRS3pi+7R2Xgbp89+9RotwVDQro6lUqJdfshNm3W6ANxHM28hySacQipCuVMdgHorfORIRmb2wcuPB08UgFh4ovkqNpTIG+Mf0D5TkZIMMKM9koPt+0fVHnOPVPqSULdDm3C9OUK99RCsldcxCfPVtGgI38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746777898;
	bh=u5OvWnq7wOwuGmaGwLKb0+j15RWUjgW+MAq88llaG00=;
	h=Subject:From:To:Date:From;
	b=YUdjV46wFjU8r2VzxMCOl4REtF+DubgkmRoylI7RpGJAJwmmYLbMxlp4hFoP0zNVu
	 kdwprEH4s3q0A9ZGnjF+mTvezJKXPJ3Vrln6TQRZ+ai1G3WVZ9u8LBq84Ylv6ut47b
	 CU/9+7NHg94TPuRrjhChd670cPCqiAXlKfr5IIJ0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6138C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:04:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74595380AA7D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:05:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.138 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 09 May 2025 08:05:36 +0000
Message-Id: <20250509080536.release-6.1.138@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.138
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.138.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.138.xz

Linux kernel version 6.1.138 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.138.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.138.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.138.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.138/v6.1.137

