Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B718C1A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Feb 2024 21:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708291865; cv=none; b=QNh7/kvUs7H0+dpmHG9DFa5fIIaWUTEhcCgJ/BgEloX35vbXW9q0/hJnXzHenAsOcx1yJ8Ia3z9G/NPcSfcEJIJaGlkEZ6ZQAfUBk+ADy6JrMRDx94haNDjBa+Op8FggQBmmE+YPE8eDNAmkLz1fHBJ5weDvVHBxsYNH72tuZg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708291865; c=relaxed/simple;
	bh=J8Cmqqt2ByLL/1e69cbC83tF5OAMpbp/hx/tnL2Gb4k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bZ1ifSEhqeEW4/nTlv7udibqGsNSiMBhw2OHoENlB26QG0oeafsIbvjk10EmwR+ofFjlt76dO9OLLnV8duzqXwuCRjEzNyfklu85EOcFVL13K28AS/AjZmtbttgqJFZ9B3nXmhxk4Ei/AyBMnOb4m6skmq5TY+sCiI2hPH9OZ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708291865;
	bh=J8Cmqqt2ByLL/1e69cbC83tF5OAMpbp/hx/tnL2Gb4k=;
	h=Subject:From:To:Date:From;
	b=iLiDvPs5k3FRRgFLHMbCGnj42OlEYRagOk3TNWXQQLfvZWYCbZD/Qm9ltr5q2RbiZ
	 4bHfMjUYjXxSwLUzy4wpJlY50gP4vHd+6t4dCEn/yi+ZKYFOrDUuWhaJKg4zxpRS9r
	 UV2Q+tHwl9k2r0zMlruhL5tAV2W0Hir7VSolJJCM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A4DFC433F1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Feb 2024 21:31:05 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E674DD990CB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Feb 2024 21:31:04 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 Feb 2024 21:31:04 +0000
Message-Id: <20240218213104.release-6.8-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc5/v6.7

Linux kernel version 6.8-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc5/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc5/v6.8-rc4

