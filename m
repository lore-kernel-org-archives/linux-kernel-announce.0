Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9586E12B9B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706223043; cv=none; b=JnkWJXx9mva3TnXba/GjuxLJyHy9hLmkvbJWmsjv+2QOpzaFUj62/ptCW68MMxqyPOv9ejeD1J3AKuakUA1o2WQSUzuiPgibEQ4WsrfTxnkfaR2bq2jq08jcJkGPrfR2ygr2hyvLP4z8NpX7VRJ7TeCp20bwfo3E4U3cxd/U+24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706223043; c=relaxed/simple;
	bh=31enoEIyXgPzD+W4VpK0+TIESBLUMEMlENC+gKV1ZCA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=InbFafNw/rf+9ACbhSPhx8PsRcmGvXNqRjJ9VIz/Eb+TUiorlVlU5TJRtIZIfDHcJBRo32QB8NNyIQEaiSXxCZgW9DZ5L5us+CqHcfiqwY72it4/Vwv8x51kZPK6+rhIDSnpC8QJ6GYhJwf57LBHyD5wMwHKi+y9eOaSHXl06Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706223043;
	bh=31enoEIyXgPzD+W4VpK0+TIESBLUMEMlENC+gKV1ZCA=;
	h=Subject:From:To:Date:From;
	b=d4D2ccpRaFIJZTF3xsebvBhWCYeo41AoktiaOifVL9Xp8pCWF2In/z/AZ0EnQhPG1
	 MhEYEZv0nziQKr/0mbfewpolIBjwx7iL0eT55MUXtznYNV7rJYBCS9bp/eBZCwY8Bn
	 Tuz2PdoamqjgVD2+YhkM96V3mL0XoFKuFm60asbY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C11CC433F1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:50:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 15141DFF765
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:50:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.306 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 22:50:43 +0000
Message-Id: <20240125225043.release-4.19.306@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.306
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.306.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.306.xz

Linux kernel version 4.19.306 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.306.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.306.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.306.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.306/v4.19.305

