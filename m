Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F441DEFC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731587442; cv=none; b=I8gdLc9NoKcLMu/7YwJympScRMVNhMqrKJ0BNNMhMA3nMKSOK80AXDA/WKhKgusKxtCwWJ0l/g4gDPOCGmwr2Thsxtnayxd2tfS2p/fK/JG9s8s/ddM/WpBPuXrD2nTeezdPfnww+NB/QBTk0ggXjoS+v5fG3aSmf0airErdzTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731587442; c=relaxed/simple;
	bh=tFOuxXRQbjQAA2fG1OvQQ5YcrF6uoGVyxMxFTzUkXm0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RPbAfhaz2SLpPJUbzxW2BdAT+w0w0eOCAGU1+Vuxrdq5DfGSfzq8+Fv9DpIeNuErycHEuGkTFdyMIJF3pt/PMTpx2axmRdhNZLWq6s4QDewM6CWQjy2DVeNtBn+0zJMHfctkIsEixlwAcfSCTVV8b0miF5tg+InSdxTdYtEwbX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731587442;
	bh=tFOuxXRQbjQAA2fG1OvQQ5YcrF6uoGVyxMxFTzUkXm0=;
	h=Subject:From:To:Date:From;
	b=tj77CPtRmCzYQBOmdqy+SMTRxub8hvHtXZHhmXPkczdkgnJw9sCButeFYMuy8JtOw
	 MJ0T8PsU+wdp5u/IEe6kRy2TgDSuUmTa0BULh8dX95tmYfavxZ/C+ZVjJlTQYMECJ3
	 1eLAchOkLKa5scdry8iSJptF7ZcHuq/TUUtnvioQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C03E9C4CECF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:30:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 76A003809A80
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:30:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.172 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 Nov 2024 12:30:52 +0000
Message-Id: <20241114123052.release-5.15.172@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.172
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.172.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.172.xz

Linux kernel version 5.15.172 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.172.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.172.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.172.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.172/v5.15.171

