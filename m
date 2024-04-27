Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B8E7EC
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714231543; cv=none; b=ZzkmMeSod0p/5UPvLs/KhKBzW005I21c75pYkZnKmcHyhcXcp6TrMYlJ9XT61g5fY2eCV5zOvHirwdZ23/ZuMmCVq0Oxg4HO7oedv6NDCoNXgMIeIVTa1pL0JUMddI30wD4eKQ1GXjk0rZ+tK+qaHYDj4vnegw2X1lgVNuzXpP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714231543; c=relaxed/simple;
	bh=pVIHV3eG5uoT2wId/W2h8QqhOszdWHFw0DjFcKHYxSM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KeIf3n5df+KqjCx7EwkJELlIH03biApEkFxSduEfQ4YBkBaOuAg4lF+T522Em3QovA/ylNCIuZxgNxTPdfWl2lZSDUhAS4VBNJLzSL9ks8ok6nHHQx7GeGCBiQb+sbzwWb+QAzw9CH2F791DIiC/4td2HJmf9v4HHFgTdOvQnZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714231543;
	bh=pVIHV3eG5uoT2wId/W2h8QqhOszdWHFw0DjFcKHYxSM=;
	h=Subject:From:To:Date:From;
	b=FOP5ZE5gRuyNcFcD/FTQtX/k58IGJw8vneZoSmH/HH3ftA/qLU0llBYuN80goewTq
	 ANq4o11+poY3IGA0E0CpTFj9TBjPyHgWGjM90zqW7n5bayghvQlKwzk4gz5QQ4erla
	 0o5iiDsNP/kauxZ1P4g8Xx0ckZDXkxPH3wzikFBw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12748C2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EC914C433F2
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.88 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Apr 2024 15:25:42 +0000
Message-Id: <20240427152542.release-6.1.88@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.88
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.88.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.88.xz

Linux kernel version 6.1.88 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.88.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.88.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.88.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.88/v6.1.87

