Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1CE1E47A3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745138414; cv=none; b=PXNnKwzWv/QnfhLYben3Qk2tvFXyJE88bwsp8vFePvwMIYaTfolDONjLSj0mTvX87eS6limE5qqKAAZHh2TTSC3G6Iw9PKNZhomNKA075EMiseAmOnITJ7uoNoGJhPVbAg71wfKYoog5XhJp7B4iQNO+zQGDw7gy4N52lIAWbwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745138414; c=relaxed/simple;
	bh=NLcdVr+tZPU2smHsCtQnHi4CcZyRMj1ycead44zUviY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bBJCswAAyK635oo45UMudYCINBIefS+SY45cfV4aV2Ff7xtLiQL/xneoowoSq2GY5fvS1kWDL3wrZc7gUhJgz2gyxWlqSRdfZPBKouS4nhpdFh63fQzBr5AI5JtM97Lnl5oAfevtylKTOtSkn0Y5tMauSV4LMyJjghdayduvx+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745138414;
	bh=NLcdVr+tZPU2smHsCtQnHi4CcZyRMj1ycead44zUviY=;
	h=Subject:From:To:Date:From;
	b=tLbMMu0oh8IL6jEgiZhvU4Kzv7R4wef0pe/vNPu68ymPRWPDewishNMHCzrJzDxqZ
	 Dek1Gv0rtcXvItIJ9or9wZ67F7nGDlSD+ajsx4bEby7R1m5V6jcvjln2x1gi3ktokw
	 Z4QEO8UbnbO1tCCVuppz0YHJViGDv7GOaQCVIp2o=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31B0AC4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADC1038111D4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Apr 2025 08:40:52 +0000
Message-Id: <20250420084052.release-6.13.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.12.xz

Linux kernel version 6.13.12 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.12/v6.13.11

