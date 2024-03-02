Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8ED2BB03
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709401543; cv=none; b=i4aCmH2NFvGCiqUK8VMVmwOqbx075tYpw+zi3K06NG5wVHb8LzTy+60mnm9YHGp4UF8jodlQBZZuYkvQ/ES2iio8dDiQxB9Y1tF6wdclIQSGkhW4wj3dIdPVlVXNTsCgTbCCkloi99wXv8u8OtXbC4P9XEBrHYgpE2shZbf3Ec4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709401543; c=relaxed/simple;
	bh=w0089Ovk7PW1Go4GqOtynm9Buw+ga69PS2J4jD+Zgl0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QhkXd/N36HEn2f/k+1YCiHq3zbhYuo+bw0uqVEclAQU9fSFwiWevQXHTHASeXCaodU3ZC8g1l/+fFL3AaS1Bgg6BaTp8bt3j/DkI/Joz5zUd3a4xeGlfQoxPz/1+kqOsBOct8M/Ni7Jr48hlWBIAau4fX+PBvEj3xfaBS8Q67Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709401543;
	bh=w0089Ovk7PW1Go4GqOtynm9Buw+ga69PS2J4jD+Zgl0=;
	h=Subject:From:To:Date:From;
	b=YfhlofHq/I7XVEZFz6qIJULyXO9t408jE3Lpgbe1DaklHKR1uErCmZEdJvtKzygUD
	 btNVG/MZolBP/soPzYTjmPct/QYpxS+iwymZdyU5Gmf5/pNXBFPmzD7tubJ13Xjgr3
	 GbctXkY8A4wNiFv9xMhDiLeG0kGzByfChA8m0OSE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DBF8C433F1
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:45:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 23EF1C595D1
	for <linux-kernel-announce@vger.kernel.org>; Sat,  2 Mar 2024 17:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 02 Mar 2024 17:45:43 +0000
Message-Id: <20240302174543.release-6.7.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.8.xz

Linux kernel version 6.7.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.8/v6.7.7

