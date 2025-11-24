Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318521ABD7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763978486; cv=none; b=rL265gnDGCperbTUqz2upgzkeM8r824QPLlT7nj2t3NDu17dlm3El3ED4MRKy9AGuFJVtmjoVWm0gix90Wl018uLfqHAk6eA76+VHDX9r/fy66iCey88BqcvApvuU7PT0iT3HXysgrMP7YKnGCvYMs0wUQdbWnkI2Fc2rZvG5Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763978486; c=relaxed/simple;
	bh=/GchVYBFcF0KvF4xZVT4QjafdnbENlih+ogNVnlvaC0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P+2GM38n8hCiv16LEZfKjHh6Z1pFkMyaihDCwy4kvZdxcC6mJlRgVsAN/oWmvYufGbBB7VEVp0OKKe3JIjR59ocyhWjtQcftWhh+PDtpQch7h9SWnBMYbA+zIgoANWtwEuaGrWUnronOng0AcLzEQFnPQz8rzZ6OZ4oG5CzfjoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763978486;
	bh=/GchVYBFcF0KvF4xZVT4QjafdnbENlih+ogNVnlvaC0=;
	h=Subject:From:To:Date:From;
	b=PYL566HTTk++qH8bbfK/4TtA9L9Rbe+YJ9OwiMVh2jDp6ezbSjAUoemdvOftqU7sk
	 JwPJ50AULe6gpA5rampZcfbmaOQZeJLpqaXm1kRAhaf+VWCCnvG7EnR/3l4BVCdawE
	 jf462fURUEdzmLZeKEKimKO0J6iwcSwZuBCxzn/4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA2D1C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 10:01:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3809C3A86259
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 10:00:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 24 Nov 2025 10:00:48 +0000
Message-Id: <20251124100048.release-6.17.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.9.xz

Linux kernel version 6.17.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.9/v6.17.8

