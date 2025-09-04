Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D672D46AF
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756998638; cv=none; b=aacHFW5eJvGCC+g3fBpadJoN2VK+ygYSc7BOHfsiRIbua1XBJvCh+fausncpOCkpuPEN5CEyhl4m7brQ6cWnz6RN8iWE/9M2x5BHVktILWgd6AKqBWejuM1JJrV/R4ynZvGkplVBghrzs9bIRA9aTocCVBCOLH/+QfDG6CpDBlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756998638; c=relaxed/simple;
	bh=IoveLptDsGkySJPE7/bN0I+GQ7JogFUpWap+sfMHNnA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a9hcSRejrZCFlPTkc5R2wpX0MLF9g3Zq2HKKnfkFyYBTdsJx/5eUSP9CT7gHofbeXUoYHxv+jfI9Cvc31CTuqodrbqHNuaixYpD+70/Vw6enQjpPmqs0VcfrO1Ppwn5eFY6fRcS/DfcqRm3HiXEmFRCuJWPd2MAXNusGQ1RQ1a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756998638;
	bh=IoveLptDsGkySJPE7/bN0I+GQ7JogFUpWap+sfMHNnA=;
	h=Subject:From:To:Date:From;
	b=Sh+vKH+GPYIKp/rkugOzIc+Wy+GXYoyogRzW/3vcv2J9DlWm8qOnJ72Mdh1Cy5ePj
	 9FTQ6+t3kSYnNU1yn3XlTVY65LR6a2KBysMDvOQQzqf7Cgfcyb5kMTJ1zEFjT8ajfn
	 jW/BymM88JUV+HXbqEC5TEBlRI4Tc3zbBrjsTLpk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C382C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 34E86383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 15:10:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.45 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 15:10:42 +0000
Message-Id: <20250904151042.release-6.12.45@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.45
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.45.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.45.xz

Linux kernel version 6.12.45 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.45.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.45.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.45.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.45/v6.12.44

