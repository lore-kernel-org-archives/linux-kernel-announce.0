Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E8F1A8F93
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015209; cv=none; b=obNYo4aL+ttq2M7CO3/rOClxDjAX2PN8pV0Njl3w9FN1+mzewcd8iVbo2n8/bMYv18nO5V7fwAl2RNH22jAqd0oI9L8vozlwh43lju7cErOpz7QCRNWJ48ir/Dq8ElFDH22FFJTkr7ne2595Tx/HFKcZcQkSaoYfuGWeiWOihV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015209; c=relaxed/simple;
	bh=OLf2rOAX9EqLLSTWvVQaMDlUJ2g/rNSvHSzoE3Su9JQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ohN5nn1Klil96mwidAQ1BdCHYgZU4Hn+SOXp4+JUOK4AOB+4EYu1x4ciqpvbKv1eRhtodCe2Y0+WbabzN6zIMBM5/337txNOfzpUfHmjwJTD5ru3EONAVXtVxi4QIPNUMOdwM3sr3+9MQr9yPHtv2RuZoM8B6dCeRn7zYjzJpvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744015209;
	bh=OLf2rOAX9EqLLSTWvVQaMDlUJ2g/rNSvHSzoE3Su9JQ=;
	h=Subject:From:To:Date:From;
	b=Qgu2dVXYCEl9QW/PaFp0FGwZHsnC0TZC2ogqohdXHaChqgpAPI+SelhDmA1XOaGai
	 0aU3RH6ir4tOBCpiwXSw4a5Yf5ciPm0EMn0bWFOuqUZI7pb6R7xaAkgaeMGNHbnGVY
	 323jCczDlDuYPJHbAGNk+6nyj03dvw1+Cp0ti9U0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D28A3C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3BA4B3804CAE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Apr 2025 08:40:45 +0000
Message-Id: <20250407084045.release-6.14.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.1.xz

Linux kernel version 6.14.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.1/v6.14

